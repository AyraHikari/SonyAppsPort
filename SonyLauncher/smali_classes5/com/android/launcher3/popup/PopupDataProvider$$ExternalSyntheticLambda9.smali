.class public final synthetic Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;->f$1:[Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->lambda$getNotificationsForItem$7(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p1

    return p1
.end method
