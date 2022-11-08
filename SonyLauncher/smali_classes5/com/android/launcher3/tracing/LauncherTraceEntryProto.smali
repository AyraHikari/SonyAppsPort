.class public final Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherTraceEntryProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

.field public static final ELAPSED_REALTIME_NANOS_FIELD_NUMBER:I = 0x1

.field public static final LAUNCHER_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private elapsedRealtimeNanos_:J

.field private launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;


# direct methods
.method static bridge synthetic -$$Nest$mclearElapsedRealtimeNanos(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->clearElapsedRealtimeNanos()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->clearLauncher()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->mergeLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetElapsedRealtimeNanos(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->setElapsedRealtimeNanos(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 377
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;-><init>()V

    .line 380
    .local v0, "defaultInstance":Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    .line 381
    const-class v1, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 383
    .end local v0    # "defaultInstance":Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    return-void
.end method

.method private clearElapsedRealtimeNanos()V
    .locals 2

    .line 64
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->elapsedRealtimeNanos_:J

    .line 66
    return-void
.end method

.method private clearLauncher()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 123
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    .line 124
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1

    .line 386
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method private mergeLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 107
    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceProto;->getDefaultInstance()Lcom/android/launcher3/tracing/LauncherTraceProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 113
    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->newBuilder(Lcom/android/launcher3/tracing/LauncherTraceProto;)Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;

    goto :goto_0

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 117
    :goto_0
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    .line 118
    return-void

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1

    .line 201
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    .line 204
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;"
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setElapsedRealtimeNanos(J)V
    .locals 1
    .param p1, "value"    # J

    .line 53
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    .line 54
    iput-wide p1, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->elapsedRealtimeNanos_:J

    .line 55
    return-void
.end method

.method private setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    .line 99
    invoke-virtual {p1}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 100
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    .line 101
    return-void
.end method

.method private setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 88
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 92
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    .line 93
    return-void

    .line 89
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

    .line 326
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 370
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 367
    :pswitch_0
    return-object v2

    .line 364
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 350
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/LauncherTraceEntryProto;>;"
    if-nez v0, :cond_1

    .line 351
    const-class v1, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    monitor-enter v1

    .line 352
    :try_start_0
    sget-object v2, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 353
    if-nez v0, :cond_0

    .line 354
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 357
    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 359
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 361
    :cond_1
    :goto_0
    return-object v0

    .line 346
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/LauncherTraceEntryProto;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0

    .line 334
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "elapsedRealtimeNanos_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "launcher_"

    aput-object v2, v0, v1

    .line 339
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u0005\u0000\u0003\t\u0001"

    .line 342
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 331
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;-><init>(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder-IA;)V

    return-object v0

    .line 328
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;-><init>()V

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

.method public getElapsedRealtimeNanos()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->elapsedRealtimeNanos_:J

    return-wide v0
.end method

.method public getLauncher()Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->launcher_:Lcom/android/launcher3/tracing/LauncherTraceProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceProto;->getDefaultInstance()Lcom/android/launcher3/tracing/LauncherTraceProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasElapsedRealtimeNanos()Z
    .locals 2

    .line 32
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasLauncher()Z
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
