package org.postgresql.febe.message
{
    import flash.utils.IDataOutput;

    public class CancelRequest extends AbstractMessage implements IFEMessage
    {
        private static final const CANCEL_CODE:int = 80877102;
        
        private var _pid:int;
        private var _key:int
        public function CancelRequest(pid:int, key:int)
        {
            _pid = pid;
            _key = key;
        }
        public function write(out:IDataOutput):void
        {
            out.writeInt(16);
            out.writeInt(CANCEL_CODE);
            out.writeInt(_pid);
            out.writeInt(_key);
        }
        
    }
}