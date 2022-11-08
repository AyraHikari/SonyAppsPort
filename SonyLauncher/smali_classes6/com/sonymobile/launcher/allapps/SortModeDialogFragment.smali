.class public Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;
.super Landroid/app/DialogFragment;
.source "SortModeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final SELECTED_RADIO_BUTTON_INDEX:Ljava/lang/String; = "selected"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/sonymobile/launcher/allapps/SortMode;)Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;
    .locals 4
    .param p0, "sortMode"    # Lcom/sonymobile/launcher/allapps/SortMode;

    .line 24
    new-instance v0, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;-><init>()V

    .line 25
    .local v0, "sortModeDialogFragment":Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/sonymobile/launcher/allapps/SortMode;->ordinal()I

    move-result v2

    const-string v3, "selected"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "index"    # I

    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    .line 45
    .local v0, "appsContainerView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->OWN_ORDER:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSortMode(Lcom/sonymobile/launcher/allapps/SortMode;)V

    .line 54
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SettingsChange;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/launcher/allapps/SortMode;->OWN_ORDER:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v3}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->sortModeChanged(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_1
    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSortMode(Lcom/sonymobile/launcher/allapps/SortMode;)V

    .line 48
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SettingsChange;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v3}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->sortModeChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    nop

    .line 59
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 60
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-virtual {p0}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "selectedIndex":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/launcher3/R$string;->title_sort_apps:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$array;->all_apps_sort_modes:I

    .line 36
    invoke-virtual {v1, v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 37
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 35
    return-object v1
.end method
