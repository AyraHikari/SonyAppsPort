.class Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;
.super Ljava/lang/Object;
.source "BaseAllAppsContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setupSortAppsPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

.field final synthetic val$menuButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    .line 972
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;->val$menuButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 975
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;->val$menuButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$msetMenuButtonVisibility(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/view/View;)V

    .line 976
    return-void
.end method
