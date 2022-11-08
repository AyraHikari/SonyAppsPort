.class public interface abstract Lcom/android/launcher3/popup/QuickstepSystemShortcut;
.super Ljava/lang/Object;
.source "QuickstepSystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;,
        Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/android/launcher3/popup/QuickstepSystemShortcut;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/popup/QuickstepSystemShortcut;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getSplitSelectShortcutByPosition(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .locals 1
    .param p0, "position"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/BaseQuickstepLauncher;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/QuickstepSystemShortcut$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    return-object v0
.end method

.method public static synthetic lambda$getSplitSelectShortcutByPosition$0(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1
    .param p0, "position"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    .param p1, "activity"    # Lcom/android/launcher3/BaseQuickstepLauncher;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;

    .line 45
    invoke-static {p1, p2}, Lcom/android/launcher3/uioverrides/SomcUtils;->canSplit(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0
.end method
