.class public final Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
.super Ljava/lang/Object;
.source "RemoteTransitionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/RemoteTransitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CounterRotator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000bJ.\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;",
        "",
        "()V",
        "<set-?>",
        "Landroid/view/SurfaceControl;",
        "surface",
        "getSurface",
        "()Landroid/view/SurfaceControl;",
        "addChild",
        "",
        "t",
        "Landroid/view/SurfaceControl$Transaction;",
        "child",
        "cleanUp",
        "finishTransaction",
        "setup",
        "parent",
        "rotateDelta",
        "",
        "parentW",
        "",
        "parentH",
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


# instance fields
.field private surface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "child"    # Landroid/view/SurfaceControl;

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->surface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 387
    return-void
.end method

.method public final cleanUp(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "finishTransaction"    # Landroid/view/SurfaceControl$Transaction;

    const-string v0, "finishTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->surface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 396
    return-void
.end method

.method public final getSurface()Landroid/view/SurfaceControl;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->surface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public final setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V
    .locals 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "parent"    # Landroid/view/SurfaceControl;
    .param p3, "rotateDelta"    # I
    .param p4, "parentW"    # F
    .param p5, "parentH"    # F

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    if-nez p3, :cond_0

    return-void

    .line 361
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 362
    const-string v1, "Transition Unrotate"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 361
    nop

    .line 369
    .local v0, "surface":Landroid/view/SurfaceControl;
    invoke-static {p1, v0, p3}, Landroid/util/RotationUtils;->rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 370
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 373
    .local v1, "tmpPt":Landroid/graphics/Point;
    rem-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 374
    .local v2, "flipped":Z
    :cond_1
    if-eqz v2, :cond_2

    move v3, p5

    goto :goto_0

    :cond_2
    move v3, p4

    .line 375
    .local v3, "pw":F
    :goto_0
    if-eqz v2, :cond_3

    move v4, p4

    goto :goto_1

    :cond_3
    move v4, p5

    .line 376
    .local v4, "ph":F
    :goto_1
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-static {v1, p3, v5, v6}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    .line 377
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 379
    return-void
.end method
