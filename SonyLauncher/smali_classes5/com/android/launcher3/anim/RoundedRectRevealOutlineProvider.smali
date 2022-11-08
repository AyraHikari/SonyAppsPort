.class public Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
.super Lcom/android/launcher3/anim/RevealOutlineAnimation;
.source "RoundedRectRevealOutlineProvider.java"


# instance fields
.field private final mEndRadius:F

.field private final mEndRect:Landroid/graphics/Rect;

.field private final mStartRadius:F

.field private final mStartRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "startRadius"    # F
    .param p2, "endRadius"    # F
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "endRect"    # Landroid/graphics/Rect;

    .line 36
    invoke-direct {p0}, Lcom/android/launcher3/anim/RevealOutlineAnimation;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRadius:F

    .line 38
    iput p2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRadius:F

    .line 39
    iput-object p3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    .line 40
    iput-object p4, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    .line 41
    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    iget v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRadius:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRadius:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutlineRadius:F

    .line 52
    iget-object v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    sub-float v2, v0, p1

    iget-object v3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 53
    iget-object v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    sub-float v2, v0, p1

    iget-object v3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 54
    iget-object v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    sub-float v2, v0, p1

    iget-object v3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 55
    iget-object v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    sub-float/2addr v0, p1

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 56
    return-void
.end method

.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method
