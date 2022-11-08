.class public Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field alpha:F

.field backgroundBlurRadius:I

.field cornerRadius:F

.field flags:I

.field layer:I

.field matrix:Landroid/graphics/Matrix;

.field relativeLayer:I

.field relativeTo:Landroid/view/SurfaceControl;

.field shadowRadius:F

.field final surface:Landroid/view/SurfaceControl;

.field visible:Z

.field windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    .line 210
    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    .locals 15

    .line 308
    new-instance v14, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    iget-object v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    iget v3, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->alpha:F

    iget-object v4, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->layer:I

    iget-object v7, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->relativeTo:Landroid/view/SurfaceControl;

    iget v8, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->relativeLayer:I

    iget v9, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->cornerRadius:F

    iget v10, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget-boolean v11, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->visible:Z

    iget v12, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->shadowRadius:F

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/view/SurfaceControl;IFIZFLcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$1;)V

    return-object v14
.end method

.method public withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "alpha"    # F

    .line 217
    iput p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->alpha:F

    .line 218
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 219
    return-object p0
.end method

.method public withBackgroundBlur(I)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "radius"    # I

    .line 289
    iput p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->backgroundBlurRadius:I

    .line 290
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 291
    return-object p0
.end method

.method public withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "radius"    # F

    .line 269
    iput p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->cornerRadius:F

    .line 270
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 271
    return-object p0
.end method

.method public withLayer(I)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "layer"    # I

    .line 247
    iput p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->layer:I

    .line 248
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 249
    return-object p0
.end method

.method public withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 227
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    .line 228
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 229
    return-object p0
.end method

.method public withRelativeLayerTo(Landroid/view/SurfaceControl;I)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p2, "relativeLayer"    # I

    .line 258
    iput-object p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->relativeTo:Landroid/view/SurfaceControl;

    .line 259
    iput p2, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->relativeLayer:I

    .line 260
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 261
    return-object p0
.end method

.method public withShadowRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "radius"    # F

    .line 279
    iput p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->shadowRadius:F

    .line 280
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 281
    return-object p0
.end method

.method public withVisibility(Z)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "visible"    # Z

    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->visible:Z

    .line 300
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 301
    return-object p0
.end method

.method public withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1
    .param p1, "windowCrop"    # Landroid/graphics/Rect;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    .line 238
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    .line 239
    return-object p0
.end method
