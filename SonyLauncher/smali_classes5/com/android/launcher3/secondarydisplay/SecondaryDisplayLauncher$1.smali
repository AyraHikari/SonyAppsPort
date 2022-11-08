.class Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecondaryDisplayLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    .line 216
    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->-$$Nest$fgetmAppsView(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->-$$Nest$fgetmAppsButton(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->-$$Nest$fgetmAppsView(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    .line 222
    return-void
.end method
