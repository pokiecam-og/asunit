package asunit4.framework {

    import asunit4.async.IAsync;
    import flash.display.DisplayObjectContainer;
    import flash.display.MovieClip
        
    class TestCase {

        [Inject]
        public var async:IAsync;

        [Before]
        public function otherBefore():void {
        }
        
        [Before]
        public function callSetUp():void {
            setUp();
        }

        [Inject]
        // TODO: The Runner should inject a unique
        // and appropriate context for the requested DataType
        public var context:DisplayObjectContainer;

        protected function setUp():void {
        }

        [After]
        public function callTearDown():void {
            tearDown();
        }

        protected function tearDown():void {
        }

        // TODO: Implement addAsync correctly:
        protected function addAsync(...):Function {
            return async.add(...);
        }

        protected function getContext():MovieClip {
            return context;
        }
    }
}

