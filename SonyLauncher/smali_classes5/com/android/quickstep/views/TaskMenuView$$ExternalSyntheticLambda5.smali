.class public final synthetic Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/TaskMenuView;

.field public final synthetic f$1:Lcom/android/launcher3/popup/SystemShortcut;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskMenuView;Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda5;->f$0:Lcom/android/quickstep/views/TaskMenuView;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/popup/SystemShortcut;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda5;->f$0:Lcom/android/quickstep/views/TaskMenuView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/TaskMenuView;->lambda$addMenuOption$3$com-android-quickstep-views-TaskMenuView(Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    return-void
.end method
