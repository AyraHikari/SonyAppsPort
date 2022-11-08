.class public Lcom/android/wm/shell/util/CounterRotator;
.super Ljava/lang/Object;
.source "CounterRotator.java"


# instance fields
.field private mSurface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "child"    # Landroid/view/SurfaceControl;

    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 73
    return-void
.end method

.method public cleanUp(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "finishTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 82
    return-void
.end method

.method public getSurface()Landroid/view/SurfaceControl;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "parent"    # Landroid/view/SurfaceControl;
    .param p3, "rotateDelta"    # I
    .param p4, "parentW"    # F
    .param p5, "parentH"    # F

    .line 44
    if-nez p3, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 46
    const-string v1, "Transition Unrotate"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 53
    invoke-static {p1, v0, p3}, Landroid/util/RotationUtils;->rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 54
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 57
    .local v0, "tmpPt":Landroid/graphics/Point;
    rem-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 58
    move v1, p4

    .line 59
    .local v1, "w":F
    move p4, p5

    .line 60
    move p5, v1

    .line 62
    .end local v1    # "w":F
    :cond_1
    float-to-int v1, p4

    float-to-int v2, p5

    invoke-static {v0, p3, v1, v2}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    .line 63
    iget-object v1, p0, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 64
    iget-object v1, p0, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 65
    return-void
.end method
