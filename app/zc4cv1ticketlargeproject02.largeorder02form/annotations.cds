using AdminService as service from '../../srv/service';

annotate service.LargeOrder {
    InsideDeliveryComment @Common.FieldControl : InsideDelivery.fieldControl ;
};
