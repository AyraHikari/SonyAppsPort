.class public final synthetic Lcom/android/launcher3/graphics/DragPreviewProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/DragPreviewProvider;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iput p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$$ExternalSyntheticLambda0;->f$1:F

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->lambda$createDrawable$0$com-android-launcher3-graphics-DragPreviewProvider(FLandroid/graphics/Canvas;)V

    return-void
.end method
