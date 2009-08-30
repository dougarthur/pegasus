package org.postgresql.febe.message
{
    import flash.utils.IDataInput;
    
    public class ReadyForQuery extends AbstractMessage implements IBEMessage
    {
        public static const IDLE:String = 'I';
        public static const IN_TRANSACTION_BLOCK:String = 'T';
        public static const IN_TRANSACTION_ERROR:String = 'E';

        public var status:String;
        
        public function read(input:IDataInput):void
        {
            status = String.fromCharCode(input.readByte());
        }

    }
}