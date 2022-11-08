.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarDragController$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method
