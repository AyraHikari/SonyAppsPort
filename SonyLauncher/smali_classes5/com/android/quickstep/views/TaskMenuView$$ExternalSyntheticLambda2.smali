.class public final synthetic Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/popup/SystemShortcut;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/popup/SystemShortcut;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/popup/SystemShortcut;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/quickstep/views/TaskMenuView;->lambda$addMenuOption$1(Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    return-void
.end method
