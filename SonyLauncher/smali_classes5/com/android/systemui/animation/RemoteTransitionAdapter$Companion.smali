.class public final Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;
.super Ljava/lang/Object;
.source "RemoteTransitionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/RemoteTransitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteTransitionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteTransitionAdapter.kt\ncom/android/systemui/animation/RemoteTransitionAdapter$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,398:1\n37#2:399\n36#2,3:400\n*S KotlinDebug\n*F\n+ 1 RemoteTransitionAdapter.kt\ncom/android/systemui/animation/RemoteTransitionAdapter$Companion\n*L\n191#1:399\n191#1:400,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0003J&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0012H\u0002J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J0\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0003J?\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00160#2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u00142\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0018\u00010\'\u00a2\u0006\u0002\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;",
        "",
        "()V",
        "adaptRemoteAnimation",
        "Landroid/window/RemoteTransition;",
        "adapter",
        "Landroid/view/RemoteAnimationAdapter;",
        "adaptRemoteRunner",
        "Landroid/window/IRemoteTransition$Stub;",
        "runner",
        "Landroid/view/IRemoteAnimationRunner;",
        "createLeash",
        "Landroid/view/SurfaceControl;",
        "info",
        "Landroid/window/TransitionInfo;",
        "change",
        "Landroid/window/TransitionInfo$Change;",
        "order",
        "",
        "t",
        "Landroid/view/SurfaceControl$Transaction;",
        "createTarget",
        "Landroid/view/RemoteAnimationTarget;",
        "newModeToLegacyMode",
        "newMode",
        "rectOffsetTo",
        "Landroid/graphics/Rect;",
        "rect",
        "offset",
        "Landroid/graphics/Point;",
        "setupLeash",
        "",
        "leash",
        "layer",
        "wrapTargets",
        "",
        "wallpapers",
        "",
        "leashMap",
        "Landroid/util/ArrayMap;",
        "(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;-><init>()V

    return-void
.end method

.method private final createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 7
    .param p1, "info"    # Landroid/window/TransitionInfo;
    .param p2, "change"    # Landroid/window/TransitionInfo$Change;
    .param p3, "order"    # I
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 100
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const-string v1, "change.leash"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 106
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_transition-leash"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 107
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 105
    nop

    .line 110
    .local v0, "leashSurface":Landroid/view/SurfaceControl;
    const-string v1, "leashSurface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v4, v1, p3

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 111
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p4, v1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 112
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p4, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 113
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 114
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 115
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 116
    return-object v0
.end method

.method private final newModeToLegacyMode(I)I
    .locals 1
    .param p1, "newMode"    # I

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 125
    const/4 v0, 0x2

    goto :goto_0

    .line 124
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :pswitch_1
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final rectOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "offset"    # Landroid/graphics/Point;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 131
    .local v0, "out":Landroid/graphics/Rect;
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 132
    return-object v0
.end method

.method private final setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "leash"    # Landroid/view/SurfaceControl;
    .param p2, "change"    # Landroid/window/TransitionInfo$Change;
    .param p3, "layer"    # I
    .param p4, "info"    # Landroid/window/TransitionInfo;
    .param p5, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 53
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 54
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 53
    :goto_1
    move v0, v1

    .line 56
    .local v0, "isOpening":Z
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 58
    .local v1, "zSplitLine":I
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    .line 61
    .local v2, "mode":I
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 62
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 63
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 62
    invoke-virtual {p5, p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 64
    invoke-virtual {p5, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 66
    packed-switch v2, :pswitch_data_0

    .line 88
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v3, p3

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 80
    :pswitch_0
    if-eqz v0, :cond_2

    .line 82
    sub-int v3, v1, p3

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v3, p3

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 67
    :pswitch_1
    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v3, p3

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 69
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    .line 70
    nop

    .line 69
    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_4

    .line 72
    const/4 v3, 0x0

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 76
    :cond_3
    sub-int v3, v1, p3

    invoke-virtual {p5, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 90
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final adaptRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/window/RemoteTransition;
    .locals 3
    .param p1, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    new-instance v0, Landroid/window/RemoteTransition;

    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v1

    const-string v2, "adapter.runner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->adaptRemoteRunner(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;

    move-result-object v1

    check-cast v1, Landroid/window/IRemoteTransition;

    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    return-object v0
.end method

.method public final adaptRemoteRunner(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
    .locals 1
    .param p1, "runner"    # Landroid/view/IRemoteAnimationRunner;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "runner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;-><init>(Landroid/view/IRemoteAnimationRunner;)V

    check-cast v0, Landroid/window/IRemoteTransition$Stub;

    return-object v0
.end method

.method public final createTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Landroid/view/RemoteAnimationTarget;
    .locals 25
    .param p1, "change"    # Landroid/window/TransitionInfo$Change;
    .param p2, "order"    # I
    .param p3, "info"    # Landroid/window/TransitionInfo;
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "change"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "info"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "t"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v4, Landroid/view/RemoteAnimationTarget;

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    move v6, v5

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->newModeToLegacyMode(I)I

    move-result v7

    .line 144
    move/from16 v15, p2

    invoke-direct {v0, v2, v1, v15, v3}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v8

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_2

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v5

    and-int/2addr v5, v9

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v11, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v9

    .line 147
    :goto_2
    const/4 v12, 0x0

    .line 148
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    nop

    .line 150
    const/4 v14, 0x0

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    const-string v9, "change.endAbsBounds"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v9

    const-string v10, "change.endRelOffset"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5, v9}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->rectOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v23

    .line 152
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v10, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move-object/from16 v24, v5

    goto :goto_3

    .line 155
    :cond_3
    new-instance v5, Landroid/app/WindowConfiguration;

    invoke-direct {v5}, Landroid/app/WindowConfiguration;-><init>()V

    move-object/from16 v24, v5

    .line 156
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v17, 0x1

    .line 158
    :goto_5
    const/16 v18, 0x0

    .line 159
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v19, v5

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v20

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getAllowEnterPip()Z

    move-result v21

    .line 162
    const/16 v22, -0x1

    .line 141
    move-object v5, v4

    move v9, v11

    move-object/from16 v16, v10

    move-object v10, v12

    move-object v11, v13

    move/from16 v12, p2

    move-object v13, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v16

    move-object/from16 v16, v24

    invoke-direct/range {v5 .. v22}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 163
    .local v4, "target":Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result v5

    iput v5, v4, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    .line 164
    return-object v4
.end method

.method public final wrapTargets(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .locals 11
    .param p1, "info"    # Landroid/window/TransitionInfo;
    .param p2, "wallpapers"    # Z
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "leashMap"    # Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "out":Ljava/util/ArrayList;
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_3

    move v4, v3

    .local v4, "i":I
    add-int/lit8 v3, v3, 0x1

    .line 183
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 184
    .local v5, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v2

    .line 185
    .local v6, "changeIsWallpaper":Z
    :goto_1
    if-eq p2, v6, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    const-string v8, "change"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {p0, v5, v8, p1, p3}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->createTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Landroid/view/RemoteAnimationTarget;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    if-eqz p4, :cond_0

    .line 188
    move-object v8, p4

    check-cast v8, Ljava/util/Map;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/RemoteAnimationTarget;

    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    .end local v4    # "i":I
    .end local v5    # "change":Landroid/window/TransitionInfo$Change;
    .end local v6    # "changeIsWallpaper":Z
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 399
    .local v3, "$i$f$toTypedArray":I
    nop

    .line 400
    move-object v4, v1

    .line 402
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    invoke-interface {v4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    .line 191
    return-object v2

    .line 402
    .restart local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v3    # "$i$f$toTypedArray":I
    .restart local v4    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
