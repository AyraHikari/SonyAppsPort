.class public Lcom/android/launcher3/settings/NotificationDotsPreference$NotificationAccessConfirmation;
.super Landroidx/fragment/app/DialogFragment;
.source "NotificationDotsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/NotificationDotsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationAccessConfirmation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 170
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference$NotificationAccessConfirmation;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v1, "showFragmentArgs":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 177
    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 178
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference$NotificationAccessConfirmation;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference$NotificationAccessConfirmation;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 158
    .local v0, "context":Landroid/content/Context;
    sget v1, Lcom/android/launcher3/R$string;->msg_missing_notification_access:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/launcher3/R$string;->derived_app_name:I

    .line 159
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/launcher3/R$string;->title_missing_notification_access:I

    .line 161
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 163
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->title_change_settings:I

    .line 164
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 160
    return-object v2
.end method
