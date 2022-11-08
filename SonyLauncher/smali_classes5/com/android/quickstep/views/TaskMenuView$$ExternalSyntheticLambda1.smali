.class public final synthetic Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic f$1:Lcom/android/launcher3/popup/SystemShortcut;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/popup/SystemShortcut;

    iput-object p3, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/popup/SystemShortcut;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/views/TaskMenuView;->lambda$addMenuOption$2(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    return-void
.end method
