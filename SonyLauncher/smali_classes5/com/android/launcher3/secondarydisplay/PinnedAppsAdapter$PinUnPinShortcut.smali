.class Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "PinnedAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinUnPinShortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIsPinned:Z

.field final synthetic this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)V
    .locals 6
    .param p2, "target"    # Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
    .param p3, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "originalView"    # Landroid/view/View;
    .param p5, "isPinned"    # Z

    .line 218
    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    .line 219
    if-eqz p5, :cond_0

    sget p1, Lcom/android/launcher3/R$drawable;->ic_remove_no_shadow:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/launcher3/R$drawable;->ic_pin:I

    :goto_0
    move v1, p1

    .line 220
    if-eqz p5, :cond_1

    sget p1, Lcom/android/launcher3/R$string;->remove_drop_target_label:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/launcher3/R$string;->action_add_to_workspace:I

    :goto_1
    move v2, p1

    .line 219
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 222
    iput-boolean p5, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->mIsPinned:Z

    .line 223
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 227
    iget-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->mIsPinned:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-static {v2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->-$$Nest$fgetmPinnedApps(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->-$$Nest$mupdate(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-static {v2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->-$$Nest$fgetmPinnedApps(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->-$$Nest$mupdate(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->-$$Nest$fgetmLauncher(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 233
    return-void
.end method
