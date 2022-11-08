.class public final Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherTraceProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/LauncherTraceProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/LauncherTraceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/LauncherTraceProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/LauncherTraceProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 166
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/LauncherTraceProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTouchInteractionService()Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->copyOnWrite()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->-$$Nest$mclearTouchInteractionService(Lcom/android/launcher3/tracing/LauncherTraceProto;)V

    .line 214
    return-object p0
.end method

.method public getTouchInteractionService()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->getTouchInteractionService()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    move-result-object v0

    return-object v0
.end method

.method public hasTouchInteractionService()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->hasTouchInteractionService()Z

    move-result v0

    return v0
.end method

.method public mergeTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->copyOnWrite()V

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto;->-$$Nest$mmergeTouchInteractionService(Lcom/android/launcher3/tracing/LauncherTraceProto;Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    .line 207
    return-object p0
.end method

.method public setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->copyOnWrite()V

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto;->-$$Nest$msetTouchInteractionService(Lcom/android/launcher3/tracing/LauncherTraceProto;Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V

    .line 199
    return-object p0
.end method

.method public setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->copyOnWrite()V

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto;->-$$Nest$msetTouchInteractionService(Lcom/android/launcher3/tracing/LauncherTraceProto;Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    .line 190
    return-object p0
.end method
