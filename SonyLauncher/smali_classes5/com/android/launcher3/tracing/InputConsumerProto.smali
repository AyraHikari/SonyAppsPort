.class public final Lcom/android/launcher3/tracing/InputConsumerProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InputConsumerProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/InputConsumerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/InputConsumerProto;",
        "Lcom/android/launcher3/tracing/InputConsumerProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/InputConsumerProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/InputConsumerProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWIPE_HANDLER_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/String;

.field private swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;


# direct methods
.method static bridge synthetic -$$Nest$mclearName(Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/InputConsumerProto;->clearName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSwipeHandler(Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/InputConsumerProto;->clearSwipeHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeSwipeHandler(Lcom/android/launcher3/tracing/InputConsumerProto;Lcom/android/launcher3/tracing/SwipeHandlerProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->mergeSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetName(Lcom/android/launcher3/tracing/InputConsumerProto;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNameBytes(Lcom/android/launcher3/tracing/InputConsumerProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSwipeHandler(Lcom/android/launcher3/tracing/InputConsumerProto;Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->setSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSwipeHandler(Lcom/android/launcher3/tracing/InputConsumerProto;Lcom/android/launcher3/tracing/SwipeHandlerProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->setSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 379
    new-instance v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;-><init>()V

    .line 382
    .local v0, "defaultInstance":Lcom/android/launcher3/tracing/InputConsumerProto;
    sput-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 383
    const-class v1, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 385
    .end local v0    # "defaultInstance":Lcom/android/launcher3/tracing/InputConsumerProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->name_:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 57
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    .line 58
    invoke-static {}, Lcom/android/launcher3/tracing/InputConsumerProto;->getDefaultInstance()Lcom/android/launcher3/tracing/InputConsumerProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->name_:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private clearSwipeHandler()V
    .locals 1

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 127
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    .line 128
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1

    .line 388
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method private mergeSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 111
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getDefaultInstance()Lcom/android/launcher3/tracing/SwipeHandlerProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 117
    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->newBuilder(Lcom/android/launcher3/tracing/SwipeHandlerProto;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    goto :goto_0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 121
    :goto_0
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    .line 122
    return-void

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1

    .line 205
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/InputConsumerProto;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 208
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/InputConsumerProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0}, Lcom/android/launcher3/tracing/InputConsumerProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/InputConsumerProto;",
            ">;"
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 47
    if-eqz p1, :cond_0

    .line 50
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->name_:Ljava/lang/String;

    .line 52
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 65
    if-eqz p1, :cond_0

    .line 68
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->name_:Ljava/lang/String;

    .line 70
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    .line 103
    invoke-virtual {p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 104
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    .line 105
    return-void
.end method

.method private setSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 92
    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 96
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    .line 97
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 372
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 369
    :pswitch_0
    return-object v2

    .line 366
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 351
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 352
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/InputConsumerProto;>;"
    if-nez v0, :cond_1

    .line 353
    const-class v1, Lcom/android/launcher3/tracing/InputConsumerProto;

    monitor-enter v1

    .line 354
    :try_start_0
    sget-object v2, Lcom/android/launcher3/tracing/InputConsumerProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 355
    if-nez v0, :cond_0

    .line 356
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 359
    sput-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 361
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 363
    :cond_1
    :goto_0
    return-object v0

    .line 348
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/InputConsumerProto;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    return-object v0

    .line 336
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "name_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "swipeHandler_"

    aput-object v2, v0, v1

    .line 341
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\t\u0001"

    .line 344
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/tracing/InputConsumerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 333
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;-><init>(Lcom/android/launcher3/tracing/InputConsumerProto$Builder-IA;)V

    return-object v0

    .line 330
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;-><init>()V

    return-object v0

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeHandler()Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->swipeHandler_:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getDefaultInstance()Lcom/android/launcher3/tracing/SwipeHandlerProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .line 25
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSwipeHandler()Z
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
