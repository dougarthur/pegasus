package org.postgresql.io {

    import flash.events.ErrorEvent;

    /**
     * An Event describing an error in an <code>IDataStream</code>.
     *
     * @see org.postgresql.io.IDataStream
     */
    public class DataStreamErrorEvent extends ErrorEvent {

        /**
         * An error in the stream. The text specified contains more details.
         *
         * @eventType dataStreamError
         */
        public static const ERROR:String = 'dataStreamError';

        /**
         * Create a new event of given type
         *
         * @param type event type
         * @param text error text
         *
         * @private
         */
        public function DataStreamErrorEvent(type:String, text:String = "") {
            super(type, false, false, text);
        }
    }
}
