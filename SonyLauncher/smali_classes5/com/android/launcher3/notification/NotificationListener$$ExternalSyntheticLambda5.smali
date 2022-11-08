.class public final synthetic Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/notification/NotificationListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/notification/NotificationListener;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, p1}, Lcom/android/launcher3/notification/NotificationListener;->$r8$lambda$TZmP3oZxTCeMh7sQfgBrlfLcKPQ(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method
