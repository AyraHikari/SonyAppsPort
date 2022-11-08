.class Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;
.super Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
.source "ThemedIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ThemedIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemedConstantState"
.end annotation


# instance fields
.field final bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

.field final colorBg:I

.field final colorFg:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/BitmapInfo;II)V
    .locals 2
    .param p1, "bitmapInfo"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p2, "colorBg"    # I
    .param p3, "colorFg"    # I

    .line 105
    iget-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;I)V

    .line 106
    iput-object p1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    .line 107
    iput p2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->colorBg:I

    .line 108
    iput p3, p0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->colorFg:I

    .line 109
    return-void
.end method


# virtual methods
.method public createDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1

    .line 113
    new-instance v0, Lcom/android/launcher3/icons/ThemedIconDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/ThemedIconDrawable;-><init>(Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;)V

    return-object v0
.end method
