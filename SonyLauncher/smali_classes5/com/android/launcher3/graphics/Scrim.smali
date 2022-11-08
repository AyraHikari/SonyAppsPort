.class public Lcom/android/launcher3/graphics/Scrim;
.super Ljava/lang/Object;
.source "Scrim.java"


# static fields
.field public static final SCRIM_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/graphics/Scrim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mRoot:Landroid/view/View;

.field protected mScrimAlpha:I

.field protected mScrimColor:I

.field protected mScrimProgress:F


# direct methods
.method static bridge synthetic -$$Nest$msetScrimProgress(Lcom/android/launcher3/graphics/Scrim;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/Scrim;->setScrimProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/android/launcher3/graphics/Scrim$1;

    const-string v1, "scrimProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/Scrim$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    .line 52
    iput-object p1, p0, Lcom/android/launcher3/graphics/Scrim;->mRoot:Landroid/view/View;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->wallpaper_popup_scrim:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimColor:I

    .line 54
    return-void
.end method

.method private setScrimProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 61
    iget v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 62
    iput p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    .line 63
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 57
    iget v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimColor:I

    iget v1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    invoke-static {v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 58
    return-void
.end method
