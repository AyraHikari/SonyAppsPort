.class Lcom/android/launcher3/settings/NotificationDotsPreference$1;
.super Landroid/database/ContentObserver;
.source "NotificationDotsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/NotificationDotsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/settings/NotificationDotsPreference;


# direct methods
.method constructor <init>(Lcom/android/launcher3/settings/NotificationDotsPreference;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/settings/NotificationDotsPreference;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/settings/NotificationDotsPreference$1;->this$0:Lcom/android/launcher3/settings/NotificationDotsPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference$1;->this$0:Lcom/android/launcher3/settings/NotificationDotsPreference;

    invoke-static {v0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->-$$Nest$mupdateUI(Lcom/android/launcher3/settings/NotificationDotsPreference;)V

    .line 60
    return-void
.end method
