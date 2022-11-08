.class public final Lcom/android/launcher3/tracing/LauncherTraceProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherTraceProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/LauncherTraceProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/LauncherTraceProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/LauncherTraceProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOUCH_INTERACTION_SERVICE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;


# direct methods
.method static bridge synthetic -$$Nest$mclearTouchInteractionService(Lcom/android/launcher3/tracing/LauncherTraceProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->clearTouchInteractionService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeTouchInteractionService(Lcom/android/launcher3/tracing/LauncherTraceProto;Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto;->mergeTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTouchInteractionService(Lcom/android/launcher3/tracing/LauncherTraceProto;Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto;->setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTouchInteractionService(Lcom/android/launcher3/tracing/LauncherTraceProto;Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto;->setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 273
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;-><init>()V

    .line 276
    .local v0, "defaultInstance":Lcom/android/launcher3/tracing/LauncherTraceProto;
    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 277
    const-class v1, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 279
    .end local v0    # "defaultInstance":Lcom/android/launcher3/tracing/LauncherTraceProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method private clearTouchInteractionService()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 72
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    .line 73
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1

    .line 282
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method private mergeTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 56
    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getDefaultInstance()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 62
    invoke-static {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->newBuilder(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    goto :goto_0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 66
    :goto_0
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    .line 67
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    .locals 1

    .line 150
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/LauncherTraceProto;)Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 153
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto;",
            ">;"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    .line 48
    invoke-virtual {p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 49
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    .line 50
    return-void
.end method

.method private setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 37
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 41
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    .line 42
    return-void

    .line 38
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

    .line 224
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 263
    :pswitch_0
    return-object v2

    .line 260
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 245
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 246
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/LauncherTraceProto;>;"
    if-nez v0, :cond_1

    .line 247
    const-class v1, Lcom/android/launcher3/tracing/LauncherTraceProto;

    monitor-enter v1

    .line 248
    :try_start_0
    sget-object v2, Lcom/android/launcher3/tracing/LauncherTraceProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 249
    if-nez v0, :cond_0

    .line 250
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 253
    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 255
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 257
    :cond_1
    :goto_0
    return-object v0

    .line 242
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/LauncherTraceProto;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0

    .line 232
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "touchInteractionService_"

    aput-object v2, v0, v1

    .line 236
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t\u0000"

    .line 238
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 229
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;-><init>(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder-IA;)V

    return-object v0

    .line 226
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;-><init>()V

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

.method public getTouchInteractionService()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getDefaultInstance()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasTouchInteractionService()Z
    .locals 2

    .line 24
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
