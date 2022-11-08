.class Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;
.super Ljava/lang/Object;
.source "BaseAllAppsContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setInsets(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    .line 495
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 498
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getMenuButtonView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$msetMenuButtonVisibility(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/view/View;)V

    .line 499
    return-void
.end method
