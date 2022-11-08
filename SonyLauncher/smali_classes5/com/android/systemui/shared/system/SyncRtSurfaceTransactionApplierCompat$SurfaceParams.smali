.class public Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    }
.end annotation


# instance fields
.field public final alpha:F

.field public final backgroundBlurRadius:I

.field public final cornerRadius:F

.field private final flags:I

.field public final layer:I

.field private final mTmpValues:[F

.field public final matrix:Landroid/graphics/Matrix;

.field public final relativeLayer:I

.field public final relativeTo:Landroid/view/SurfaceControl;

.field public final shadowRadius:F

.field public final surface:Landroid/view/SurfaceControl;

.field public final visible:Z

.field public final windowCrop:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/view/SurfaceControl;IFIZF)V
    .locals 1
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "flags"    # I
    .param p3, "alpha"    # F
    .param p4, "matrix"    # Landroid/graphics/Matrix;
    .param p5, "windowCrop"    # Landroid/graphics/Rect;
    .param p6, "layer"    # I
    .param p7, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p8, "relativeLayer"    # I
    .param p9, "cornerRadius"    # F
    .param p10, "backgroundBlurRadius"    # I
    .param p11, "visible"    # Z
    .param p12, "shadowRadius"    # F

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->mTmpValues:[F

    .line 317
    iput p2, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    .line 318
    iput-object p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 319
    iput p3, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    .line 320
    iput-object p4, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    .line 321
    iput-object p5, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    .line 322
    iput p6, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    .line 323
    iput-object p7, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->relativeTo:Landroid/view/SurfaceControl;

    .line 324
    iput p8, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->relativeLayer:I

    .line 325
    iput p9, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    .line 326
    iput p10, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->backgroundBlurRadius:I

    .line 327
    iput-boolean p11, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->visible:Z

    .line 328
    iput p12, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->shadowRadius:F

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/view/SurfaceControl;IFIZFLcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/SurfaceControl;
    .param p2, "x1"    # I
    .param p3, "x2"    # F
    .param p4, "x3"    # Landroid/graphics/Matrix;
    .param p5, "x4"    # Landroid/graphics/Rect;
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/view/SurfaceControl;
    .param p8, "x7"    # I
    .param p9, "x8"    # F
    .param p10, "x9"    # I
    .param p11, "x10"    # Z
    .param p12, "x11"    # F
    .param p13, "x12"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$1;

    .line 190
    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/view/SurfaceControl;IFIZF)V

    return-void
.end method


# virtual methods
.method public applyTo(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 347
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->mTmpValues:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 350
    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 353
    :cond_1
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 356
    :cond_2
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 359
    :cond_3
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 362
    :cond_4
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->backgroundBlurRadius:I

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 365
    :cond_5
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->visible:Z

    if-eqz v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 369
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 372
    :cond_7
    :goto_0
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 373
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->relativeTo:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->relativeLayer:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 375
    :cond_8
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 376
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->shadowRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 378
    :cond_9
    return-void
.end method
