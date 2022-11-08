.class public final Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SwipeHandlerProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/SwipeHandlerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/SwipeHandlerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/SwipeHandlerProto;",
        "Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/SwipeHandlerProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 275
    invoke-static {}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/SwipeHandlerProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppToOverviewProgress()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mclearAppToOverviewProgress(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 432
    return-object p0
.end method

.method public clearGestureState()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mclearGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 323
    return-object p0
.end method

.method public clearIsRecentsAttachedToAppWindow()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mclearIsRecentsAttachedToAppWindow(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 354
    return-object p0
.end method

.method public clearScrollOffset()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mclearScrollOffset(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 385
    return-object p0
.end method

.method public getAppToOverviewProgress()F
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getAppToOverviewProgress()F

    move-result v0

    return v0
.end method

.method public getGestureState()Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getGestureState()Lcom/android/launcher3/tracing/GestureStateProto;

    move-result-object v0

    return-object v0
.end method

.method public getIsRecentsAttachedToAppWindow()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getIsRecentsAttachedToAppWindow()Z

    move-result v0

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getScrollOffset()I

    move-result v0

    return v0
.end method

.method public hasAppToOverviewProgress()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->hasAppToOverviewProgress()Z

    move-result v0

    return v0
.end method

.method public hasGestureState()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->hasGestureState()Z

    move-result v0

    return v0
.end method

.method public hasIsRecentsAttachedToAppWindow()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->hasIsRecentsAttachedToAppWindow()Z

    move-result v0

    return v0
.end method

.method public hasScrollOffset()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->hasScrollOffset()Z

    move-result v0

    return v0
.end method

.method public mergeGestureState(Lcom/android/launcher3/tracing/GestureStateProto;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/GestureStateProto;

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mmergeGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto;)V

    .line 316
    return-object p0
.end method

.method public setAppToOverviewProgress(F)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # F

    .line 418
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 419
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetAppToOverviewProgress(Lcom/android/launcher3/tracing/SwipeHandlerProto;F)V

    .line 420
    return-object p0
.end method

.method public setGestureState(Lcom/android/launcher3/tracing/GestureStateProto$Builder;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto$Builder;)V

    .line 308
    return-object p0
.end method

.method public setGestureState(Lcom/android/launcher3/tracing/GestureStateProto;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/GestureStateProto;

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto;)V

    .line 299
    return-object p0
.end method

.method public setIsRecentsAttachedToAppWindow(Z)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 345
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetIsRecentsAttachedToAppWindow(Lcom/android/launcher3/tracing/SwipeHandlerProto;Z)V

    .line 346
    return-object p0
.end method

.method public setScrollOffset(I)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 375
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetScrollOffset(Lcom/android/launcher3/tracing/SwipeHandlerProto;I)V

    .line 377
    return-object p0
.end method
