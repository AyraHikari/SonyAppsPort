.class public final synthetic Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->lambda$addNotificationsChangedListener$0(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    return-void
.end method
