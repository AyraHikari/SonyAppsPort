.class public final synthetic Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->lambda$animateViewIntoPosition$0(Landroid/view/View;)V

    return-void
.end method
