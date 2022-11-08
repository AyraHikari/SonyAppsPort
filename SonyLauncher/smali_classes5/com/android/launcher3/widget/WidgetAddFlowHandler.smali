.class public Lcom/android/launcher3/widget/WidgetAddFlowHandler;
.super Ljava/lang/Object;
.source "WidgetAddFlowHandler.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/widget/WidgetAddFlowHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler$1;

    invoke-direct {v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0
    .param p1, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public needsConfigure()Z
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 96
    .local v0, "featureFlags":I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 99
    .local v1, "configurationOptional":Z
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method public startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "appWidgetId"    # I
    .param p3, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "requestCode"    # I

    .line 57
    invoke-static {p2, p0, p3}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 59
    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    .line 60
    return-void
.end method

.method public startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)Z
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "appWidgetId"    # I
    .param p3, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "requestCode"    # I

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    invoke-static {p2, p0, p3}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 80
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)Z
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "requestCode"    # I

    .line 67
    iget v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    return-void
.end method
