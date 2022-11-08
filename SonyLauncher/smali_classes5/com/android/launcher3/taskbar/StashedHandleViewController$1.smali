.class Lcom/android/launcher3/taskbar/StashedHandleViewController$1;
.super Ljava/lang/Object;
.source "StashedHandleViewController.java"

# interfaces
.implements Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/StashedHandleViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/StashedHandleViewController;

    .line 91
    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "sampledView"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleView(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/StashedHandleView;->getSampledRegion()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public onRegionDarknessChanged(Z)V
    .locals 2
    .param p1, "isRegionDark"    # Z

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleView(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateHandleColor(ZZ)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmPrefs(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stashed_handle_region_is_dark"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void
.end method
