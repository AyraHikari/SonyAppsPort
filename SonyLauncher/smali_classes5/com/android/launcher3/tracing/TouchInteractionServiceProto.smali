.class public final Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TouchInteractionServiceProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/TouchInteractionServiceProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProto;",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

.field public static final INPUT_CONSUMER_FIELD_NUMBER:I = 0x3

.field public static final OVERVIEW_COMPONENT_OBVSERVER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/TouchInteractionServiceProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_CONNECTED_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

.field private overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

.field private serviceConnected_:Z


# direct methods
.method static bridge synthetic -$$Nest$mclearInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->clearInputConsumer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->clearOverviewComponentObvserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearServiceConnected(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->clearServiceConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->mergeInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->mergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetServiceConnected(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->setServiceConnected(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 443
    new-instance v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;-><init>()V

    .line 446
    .local v0, "defaultInstance":Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    sput-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 447
    const-class v1, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 449
    .end local v0    # "defaultInstance":Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method private clearInputConsumer()V
    .locals 1

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 161
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 162
    return-void
.end method

.method private clearOverviewComponentObvserver()V
    .locals 1

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 103
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 104
    return-void
.end method

.method private clearServiceConnected()V
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->serviceConnected_:Z

    .line 46
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1

    .line 452
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method private mergeInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 145
    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/android/launcher3/tracing/InputConsumerProto;->getDefaultInstance()Lcom/android/launcher3/tracing/InputConsumerProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 151
    invoke-static {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->newBuilder(Lcom/android/launcher3/tracing/InputConsumerProto;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    goto :goto_0

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 155
    :goto_0
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 156
    return-void

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 87
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->getDefaultInstance()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 93
    invoke-static {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->newBuilder(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    goto :goto_0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 97
    :goto_0
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 98
    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1

    .line 239
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 242
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/TouchInteractionServiceProto;",
            ">;"
        }
    .end annotation

    .line 458
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    .line 137
    invoke-virtual {p1}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 138
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 139
    return-void
.end method

.method private setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 126
    if-eqz p1, :cond_0

    .line 129
    iput-object p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 130
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 131
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    .line 79
    invoke-virtual {p1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 80
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 81
    return-void
.end method

.method private setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 68
    if-eqz p1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 72
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 73
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setServiceConnected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 37
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 38
    iput-boolean p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->serviceConnected_:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 436
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 433
    :pswitch_0
    return-object v2

    .line 430
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 415
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 416
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/TouchInteractionServiceProto;>;"
    if-nez v0, :cond_1

    .line 417
    const-class v1, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    monitor-enter v1

    .line 418
    :try_start_0
    sget-object v2, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 419
    if-nez v0, :cond_0

    .line 420
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 423
    sput-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 425
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 427
    :cond_1
    :goto_0
    return-object v0

    .line 412
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/TouchInteractionServiceProto;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0

    .line 399
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "serviceConnected_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "overviewComponentObvserver_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "inputConsumer_"

    aput-object v2, v0, v1

    .line 405
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0007\u0000\u0002\t\u0001\u0003\t\u0002"

    .line 408
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 396
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;-><init>(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder-IA;)V

    return-object v0

    .line 393
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;-><init>()V

    return-object v0

    nop

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

.method public getInputConsumer()Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/InputConsumerProto;->getDefaultInstance()Lcom/android/launcher3/tracing/InputConsumerProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOverviewComponentObvserver()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->getDefaultInstance()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getServiceConnected()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->serviceConnected_:Z

    return v0
.end method

.method public hasInputConsumer()Z
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOverviewComponentObvserver()Z
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServiceConnected()Z
    .locals 2

    .line 24
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
