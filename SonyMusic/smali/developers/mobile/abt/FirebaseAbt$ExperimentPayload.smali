.class public final Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FirebaseAbt.java"

# interfaces
.implements Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;",
        ">;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activateEventToLog_:Ljava/lang/String;

.field private clearEventToLog_:Ljava/lang/String;

.field private experimentId_:Ljava/lang/String;

.field private experimentStartTimeMillis_:J

.field private ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation
.end field

.field private setEventToLog_:Ljava/lang/String;

.field private timeToLiveMillis_:J

.field private timeoutEventToLog_:Ljava/lang/String;

.field private triggerEvent_:Ljava/lang/String;

.field private triggerTimeoutMillis_:J

.field private ttlExpiryEventToLog_:Ljava/lang/String;

.field private variantId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2958
    new-instance v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;-><init>()V

    .line 2961
    sput-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 2962
    const-class v1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 682
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 683
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    const-string v0, ""

    .line 684
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    const-string v0, ""

    .line 685
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    const-string v0, ""

    .line 686
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    const-string v0, ""

    .line 687
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    const-string v0, ""

    .line 688
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    const-string v0, ""

    .line 689
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    const-string v0, ""

    .line 690
    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 691
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$500()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1

    .line 677
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object v0
.end method

.method public static parseFrom([B)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1809
    sget-object v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2895
    sget-object p2, Ldevelopers/mobile/abt/FirebaseAbt$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2951
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2945
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2930
    :pswitch_2
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2932
    const-class p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    monitor-enter p2

    .line 2933
    :try_start_0
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2935
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2938
    sput-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->PARSER:Lcom/google/protobuf/Parser;

    .line 2940
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 2927
    :pswitch_3
    sget-object p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

    .line 2903
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "experimentId_"

    aput-object v0, p1, p3

    const-string p3, "variantId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "experimentStartTimeMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "triggerEvent_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "triggerTimeoutMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "timeToLiveMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "setEventToLog_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "activateEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "clearEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "timeoutEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "ttlExpiryEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "overflowPolicy_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "ongoingExperiments_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\r\u0000\u0000\u0001\r\r\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208\u0005\u0002\u0006\u0002\u0007\u0208\u0008\u0208\t\u0208\n\u0208\u000b\u0208\u000c\u000c\r\u001b"

    .line 2923
    sget-object p3, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->DEFAULT_INSTANCE:Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2900
    :pswitch_5
    new-instance p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;

    invoke-direct {p1, p3}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;-><init>(Ldevelopers/mobile/abt/FirebaseAbt$1;)V

    return-object p1

    .line 2897
    :pswitch_6
    new-instance p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-direct {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 830
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentStartTimeMillis()J
    .locals 2

    .line 986
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->experimentStartTimeMillis_:J

    return-wide v0
.end method

.method public getTimeToLiveMillis()J
    .locals 2

    .line 1150
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->timeToLiveMillis_:J

    return-wide v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 1026
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTimeoutMillis()J
    .locals 2

    .line 1097
    iget-wide v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->triggerTimeoutMillis_:J

    return-wide v0
.end method

.method public getVariantId()Ljava/lang/String;
    .locals 1

    .line 914
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-object v0
.end method
