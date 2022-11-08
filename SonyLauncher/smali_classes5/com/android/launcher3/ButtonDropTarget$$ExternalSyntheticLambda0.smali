.class public final synthetic Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/ButtonDropTarget;

.field public final synthetic f$1:Lcom/android/launcher3/DropTarget$DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->lambda$onDrop$0$com-android-launcher3-ButtonDropTarget(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method
