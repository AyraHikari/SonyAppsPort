.class public final synthetic Lcom/android/launcher3/popup/QuickstepSystemShortcut$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher3/popup/QuickstepSystemShortcut;->lambda$getSplitSelectShortcutByPosition$0(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p1

    return-object p1
.end method
