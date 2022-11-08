.class public Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PermissionsHowToEnableDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;
    }
.end annotation


# static fields
.field private static final KEY_ENTRIES:Ljava/lang/String; = "entries_key"

.field private static final KEY_FINISH_CANCEL:Ljava/lang/String; = "finish_cancel_key"

.field private static final KEY_FINISH_CONTINUE:Ljava/lang/String; = "finish_continue_key"

.field public static final TAG:Ljava/lang/String; = "permission_dialog_tag"


# instance fields
.field private mFinishWhenCancel:Z

.field private mFinishWhenContinue:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->mFinishWhenCancel:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->mFinishWhenContinue:Z

    return p0
.end method

.method private addPermissionEntries(Landroid/content/Context;Landroid/view/View;[Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;)V
    .locals 9

    const v0, 0x7f09017d

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 148
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 149
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0096

    .line 150
    invoke-virtual {v4, v5, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090214

    .line 151
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901a1

    .line 152
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0900d5

    .line 153
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 154
    iget v8, v3, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;->mDescriptionId:I

    .line 155
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-static {v8}, Lcom/sonyericsson/music/common/PermissionUtils;->parseMusicPermissionMetadata(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 156
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v6, v3, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;->mPermission:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/sonyericsson/music/common/PermissionUtils;->getPermissionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 158
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v3, v3, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;->mPermission:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/sonyericsson/music/common/PermissionUtils;->getPermissionLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static newInstance([Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;ZZ)Landroidx/fragment/app/DialogFragment;
    .locals 3

    .line 47
    new-instance v0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "entries_key"

    .line 49
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "finish_continue_key"

    .line 50
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "finish_cancel_key"

    .line 51
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 59
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0095

    const/4 v2, 0x0

    .line 61
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901ea

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 63
    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f100128

    .line 64
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f1001b6

    .line 63
    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "entries_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;

    if-eqz v2, :cond_0

    .line 68
    array-length v3, v2

    if-lez v3, :cond_0

    .line 69
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->addPermissionEntries(Landroid/content/Context;Landroid/view/View;[Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 74
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "finish_continue_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->mFinishWhenContinue:Z

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "finish_cancel_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->mFinishWhenCancel:Z

    const p1, 0x7f1001b8

    .line 77
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f090063

    .line 79
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v2, 0x7f090082

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 81
    new-instance v3, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance p1, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$2;-><init>(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance p1, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$3;-><init>(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {p0, v5}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 138
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object p1
.end method
