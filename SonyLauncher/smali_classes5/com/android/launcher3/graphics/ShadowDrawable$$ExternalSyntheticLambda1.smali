.class public final synthetic Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/graphics/Paint;

.field public final synthetic f$3:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;[ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;->f$1:[I

    iput-object p3, p0, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Paint;

    iput-object p4, p0, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;->f$1:[I

    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/launcher3/graphics/ShadowDrawable;->lambda$regenerateBitmapCache$0(Landroid/graphics/Bitmap;[ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    return-void
.end method
