.class public Lcom/android/quickstep/util/ProtoTracer;
.super Ljava/lang/Object;
.source "ProtoTracer.java"

# interfaces
.implements Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams<",
        "Lcom/google/protobuf/MessageLite$Builder;",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
        "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/util/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAGIC_NUMBER_VALUE:J = 0x4352545248434e4cL

.field private static final TAG:Ljava/lang/String; = "ProtoTracer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/tracing/FrameProtoTracer<",
            "Lcom/google/protobuf/MessageLite$Builder;",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
            "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/util/ProtoTracer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/util/ProtoTracer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/quickstep/util/ProtoTracer;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;-><init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;)V

    iput-object v0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 61
    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "traceable":Lcom/android/systemui/shared/tracing/ProtoTraceable;, "Lcom/android/systemui/shared/tracing/ProtoTraceable<Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;>;"
    iget-object v0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 122
    return-void
.end method

.method public getEncapsulatingTraceProto()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1

    .line 70
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->newBuilder()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEncapsulatingTraceProto()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/android/quickstep/util/ProtoTracer;->getEncapsulatingTraceProto()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getProtoBytes(Lcom/google/protobuf/MessageLite$Builder;)[B
    .locals 1
    .param p1, "proto"    # Lcom/google/protobuf/MessageLite$Builder;

    .line 104
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProtoBytes(Ljava/lang/Object;)[B
    .locals 0

    .line 43
    check-cast p1, Lcom/google/protobuf/MessageLite$Builder;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ProtoTracer;->getProtoBytes(Lcom/google/protobuf/MessageLite$Builder;)[B

    move-result-object p1

    return-object p1
.end method

.method public getProtoSize(Lcom/google/protobuf/MessageLite$Builder;)I
    .locals 1
    .param p1, "proto"    # Lcom/google/protobuf/MessageLite$Builder;

    .line 109
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getProtoSize(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/google/protobuf/MessageLite$Builder;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ProtoTracer;->getProtoSize(Lcom/google/protobuf/MessageLite$Builder;)I

    move-result p1

    return p1
.end method

.method public getTraceFile()Ljava/io/File;
    .locals 3

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/quickstep/util/ProtoTracer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "launcher_trace.pb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "traceable":Lcom/android/systemui/shared/tracing/ProtoTraceable;, "Lcom/android/systemui/shared/tracing/ProtoTraceable<Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;>;"
    iget-object v0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 126
    return-void
.end method

.method public scheduleFrameUpdate()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {v0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->scheduleFrameUpdate()V

    .line 130
    return-void
.end method

.method public serializeEncapsulatingProto(Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;Ljava/util/Queue;)[B
    .locals 2
    .param p1, "encapsulatingProto"    # Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
            "Ljava/util/Queue<",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
            ">;)[B"
        }
    .end annotation

    .line 92
    .local p2, "buffer":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;>;"
    const-string v0, "ProtoTracer.serializeEncapsulatingProto"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 93
    const-wide v0, 0x4352545248434e4cL    # 2.0637047828855088E16

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->setMagicNumber(J)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    .line 94
    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 95
    .local v1, "entry":Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    invoke-virtual {p1, v1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    .line 96
    .end local v1    # "entry":Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->toByteArray()[B

    move-result-object v0

    .line 98
    .local v0, "bytes":[B
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 99
    return-object v0
.end method

.method public bridge synthetic serializeEncapsulatingProto(Ljava/lang/Object;Ljava/util/Queue;)[B
    .locals 0

    .line 43
    check-cast p1, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/ProtoTracer;->serializeEncapsulatingProto(Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;Ljava/util/Queue;)[B

    move-result-object p1

    return-object p1
.end method

.method public start()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {v0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->start()V

    .line 114
    return-void
.end method

.method public stop()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {v0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->stop()V

    .line 118
    return-void
.end method

.method public update()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/quickstep/util/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {v0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->update()V

    .line 134
    return-void
.end method

.method public updateBufferProto(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;Ljava/util/ArrayList;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 4
    .param p1, "reuseObj"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
            ">;>;)",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;"
        }
    .end annotation

    .line 77
    .local p2, "traceables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/tracing/ProtoTraceable<Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;>;>;"
    const-string v0, "ProtoTracer.updateBufferProto"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->newBuilder()Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    move-result-object v0

    .line 79
    .local v0, "proto":Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->setElapsedRealtimeNanos(J)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 80
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceProto;->newBuilder()Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    move-result-object v1

    .line 81
    .local v1, "launcherProto":Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/tracing/ProtoTraceable;

    .line 82
    .local v3, "t":Lcom/android/systemui/shared/tracing/ProtoTraceable;
    invoke-interface {v3, v1}, Lcom/android/systemui/shared/tracing/ProtoTraceable;->writeToProto(Ljava/lang/Object;)V

    .line 83
    .end local v3    # "t":Lcom/android/systemui/shared/tracing/ProtoTraceable;
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 85
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 86
    return-object v0
.end method

.method public bridge synthetic updateBufferProto(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/ProtoTracer;->updateBufferProto(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;Ljava/util/ArrayList;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    move-result-object p1

    return-object p1
.end method
