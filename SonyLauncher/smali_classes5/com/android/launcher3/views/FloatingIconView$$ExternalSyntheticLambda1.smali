.class public final synthetic Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Lcom/android/launcher3/dragndrop/DragLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/views/FloatingIconView;

    iput-boolean p2, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;->f$3:Lcom/android/launcher3/dragndrop/DragLayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/views/FloatingIconView;

    iget-boolean v1, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;->f$3:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->lambda$getFloatingIconView$5(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method
