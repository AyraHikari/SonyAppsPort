.class Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "HotseatPredictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinPrediction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6
    .param p2, "target"    # Lcom/android/launcher3/uioverrides/QuickstepLauncher;
    .param p3, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "originalView"    # Landroid/view/View;

    .line 501
    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    .line 502
    sget v1, Lcom/android/launcher3/R$drawable;->ic_pin:I

    sget v2, Lcom/android/launcher3/R$string;->pin_prediction:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 508
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;->dismissTaskMenuView(Landroid/content/Context;)V

    .line 509
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->pinPrediction(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 510
    return-void
.end method
