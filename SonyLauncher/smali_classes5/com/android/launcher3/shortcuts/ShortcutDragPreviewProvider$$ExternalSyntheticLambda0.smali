.class public final synthetic Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    iput p2, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    iget v1, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->lambda$createDrawable$0$com-android-launcher3-shortcuts-ShortcutDragPreviewProvider(ILandroid/graphics/Canvas;)V

    return-void
.end method
