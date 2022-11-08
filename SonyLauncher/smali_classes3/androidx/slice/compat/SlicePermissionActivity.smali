.class public Landroidx/slice/compat/SlicePermissionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SlicePermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final MAX_LABEL_SIZE_PX:F = 500.0f

.field private static final TAG:Ljava/lang/String; = "SlicePermissionActivity"


# instance fields
.field private mCallingPkg:Ljava/lang/String;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mProviderPkg:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private loadSafeLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 94
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "labelStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 102
    .local v2, "labelLength":I
    const/4 v3, 0x0

    .line 103
    .local v3, "offset":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 105
    .local v4, "codePoint":I
    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v5

    .line 106
    .local v5, "type":I
    const/16 v6, 0xd

    const/4 v7, 0x0

    if-eq v5, v6, :cond_2

    const/16 v6, 0xf

    if-eq v5, v6, :cond_2

    const/16 v6, 0xe

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v7, v3

    .line 114
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 118
    .end local v4    # "codePoint":I
    .end local v5    # "type":I
    goto :goto_0

    .line 109
    .restart local v4    # "codePoint":I
    .restart local v5    # "type":I
    :cond_2
    :goto_1
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 120
    .end local v4    # "codePoint":I
    .end local v5    # "type":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v4

    .line 124
    :cond_4
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 125
    .local v4, "paint":Landroid/text/TextPaint;
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 127
    const/high16 v5, 0x43fa0000    # 500.0f

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 132
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    iget-object v2, p0, Landroidx/slice/compat/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 134
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 133
    invoke-static {p0, v0, v1, v2}, Landroidx/slice/compat/SliceProviderCompat;->grantSlicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->finish()V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slice_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 63
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "provider_pkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 69
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroidx/slice/compat/SlicePermissionActivity;->loadSafeLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "app1":Ljava/lang/CharSequence;
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    iget-object v4, p0, Landroidx/slice/compat/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Landroidx/slice/compat/SlicePermissionActivity;->loadSafeLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 73
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v2, v4}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "app2":Ljava/lang/CharSequence;
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Landroidx/slice/core/R$string;->abc_slice_permission_title:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 75
    invoke-virtual {p0, v5, v6}, Landroidx/slice/compat/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Landroidx/slice/core/R$layout;->abc_slice_permission_request:I

    .line 76
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Landroidx/slice/core/R$string;->abc_slice_permission_deny:I

    .line 77
    invoke-virtual {v4, v5, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Landroidx/slice/core/R$string;->abc_slice_permission_allow:I

    .line 78
    invoke-virtual {v4, v5, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 79
    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 81
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    sget v5, Landroidx/slice/core/R$id;->text1:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 82
    .local v4, "t1":Landroid/widget/TextView;
    sget v5, Landroidx/slice/core/R$string;->abc_slice_permission_text_1:I

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-virtual {p0, v5, v6}, Landroidx/slice/compat/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v5, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    sget v6, Landroidx/slice/core/R$id;->text2:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 84
    .local v5, "t2":Landroid/widget/TextView;
    sget v6, Landroidx/slice/core/R$string;->abc_slice_permission_text_2:I

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {p0, v6, v7}, Landroidx/slice/compat/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "app1":Ljava/lang/CharSequence;
    .end local v2    # "app2":Ljava/lang/CharSequence;
    .end local v4    # "t1":Landroid/widget/TextView;
    .end local v5    # "t2":Landroid/widget/TextView;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "SlicePermissionActivity"

    const-string v2, "Couldn\'t find package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->finish()V

    .line 89
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 147
    iget-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 150
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 141
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->finish()V

    .line 142
    return-void
.end method
