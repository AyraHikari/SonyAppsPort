.class Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;
.super Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
.source "ClockDrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockConstantState"
.end annotation


# instance fields
.field private final mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

.field private final mBG:Landroid/graphics/Bitmap;

.field private final mBgFilter:Landroid/graphics/ColorFilter;

.field private final mBoundsOffset:F

.field private final mThemedFgColor:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimInfo(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBG(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mBG:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBgFilter(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mBgFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoundsOffset(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mBoundsOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThemedFgColor(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mThemedFgColor:I

    return p0
.end method

.method constructor <init>(Landroid/graphics/Bitmap;IIFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I
    .param p3, "themedFgColor"    # I
    .param p4, "boundsOffset"    # F
    .param p5, "animInfo"    # Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    .param p6, "bg"    # Landroid/graphics/Bitmap;
    .param p7, "bgFilter"    # Landroid/graphics/ColorFilter;

    .line 495
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;I)V

    .line 496
    iput p4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mBoundsOffset:F

    .line 497
    iput-object p5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 498
    iput-object p6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mBG:Landroid/graphics/Bitmap;

    .line 499
    iput-object p7, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mBgFilter:Landroid/graphics/ColorFilter;

    .line 500
    iput p3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mThemedFgColor:I

    .line 501
    return-void
.end method


# virtual methods
.method public createDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1

    .line 505
    new-instance v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;-><init>(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)V

    return-object v0
.end method
