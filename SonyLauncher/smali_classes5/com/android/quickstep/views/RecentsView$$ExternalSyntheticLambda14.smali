.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda14;->f$0:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final shouldIncludeView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda14;->f$0:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$12(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
