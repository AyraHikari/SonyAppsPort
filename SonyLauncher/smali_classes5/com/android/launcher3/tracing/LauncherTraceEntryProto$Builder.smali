.class public final Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherTraceEntryProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 221
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearElapsedRealtimeNanos()Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$mclearElapsedRealtimeNanos(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    .line 269
    return-object p0
.end method

.method public clearLauncher()Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$mclearLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    .line 316
    return-object p0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->getElapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLauncher()Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->getLauncher()Lcom/android/launcher3/tracing/LauncherTraceProto;

    move-result-object v0

    return-object v0
.end method

.method public hasElapsedRealtimeNanos()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->hasElapsedRealtimeNanos()Z

    move-result v0

    return v0
.end method

.method public hasLauncher()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->hasLauncher()Z

    move-result v0

    return v0
.end method

.method public mergeLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$mmergeLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto;)V

    .line 309
    return-object p0
.end method

.method public setElapsedRealtimeNanos(J)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$msetElapsedRealtimeNanos(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;J)V

    .line 257
    return-object p0
.end method

.method public setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$msetLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)V

    .line 301
    return-object p0
.end method

.method public setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$msetLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto;)V

    .line 292
    return-object p0
.end method
