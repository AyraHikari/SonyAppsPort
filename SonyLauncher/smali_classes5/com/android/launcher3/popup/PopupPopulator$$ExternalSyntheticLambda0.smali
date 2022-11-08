.class public final synthetic Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$0(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object p1

    return-object p1
.end method
