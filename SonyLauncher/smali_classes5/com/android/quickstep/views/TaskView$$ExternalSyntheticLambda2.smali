.class public final synthetic Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/TaskView;

.field public final synthetic f$1:Lcom/android/quickstep/views/IconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/IconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda2;->f$1:Lcom/android/quickstep/views/IconView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda2;->f$1:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/TaskView;->lambda$setIcon$12$com-android-quickstep-views-TaskView(Lcom/android/quickstep/views/IconView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
