.class public Lcom/android/systemui/shared/system/TransactionCompat;
.super Ljava/lang/Object;
.source "TransactionCompat.java"


# instance fields
.field final mTmpValues:[F

.field final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTmpValues:[F

    .line 31
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 32
    return-void
.end method

.method public static setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)V
    .locals 0
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "z"    # I

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 107
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 36
    return-void
.end method

.method public hide(Landroid/view/SurfaceControl;)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 45
    return-object p0
.end method

.method public setAlpha(Landroid/view/SurfaceControl;F)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "alpha"    # F

    .line 64
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 65
    return-object p0
.end method

.method public setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "radius"    # I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 96
    return-object p0
.end method

.method public setColor(Landroid/view/SurfaceControl;[F)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "color"    # [F

    .line 100
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 101
    return-object p0
.end method

.method public setCornerRadius(Landroid/view/SurfaceControl;F)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "radius"    # F

    .line 90
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 91
    return-object p0
.end method

.method public setLayer(Landroid/view/SurfaceControl;I)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "z"    # I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 60
    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;FFFF)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 6
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dtdy"    # F
    .param p5, "dsdy"    # F

    .line 75
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 76
    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 2
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTmpValues:[F

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 81
    return-object p0
.end method

.method public setOpaque(Landroid/view/SurfaceControl;Z)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "opaque"    # Z

    .line 69
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 70
    return-object p0
.end method

.method public setPosition(Landroid/view/SurfaceControl;FF)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 49
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 50
    return-object p0
.end method

.method public setSize(Landroid/view/SurfaceControl;II)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 54
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 55
    return-object p0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 86
    return-object p0
.end method

.method public show(Landroid/view/SurfaceControl;)Lcom/android/systemui/shared/system/TransactionCompat;
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/shared/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 40
    return-object p0
.end method
