.class public abstract Lcom/sonyericsson/music/ThemedActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThemedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ThemedActivity$Theme;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/music/ThemedActivity;->provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;

    move-result-object v0

    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ThemedActivity$Theme;->get(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/music/ThemedActivity;->provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;

    move-result-object v0

    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ThemedActivity$Theme;->get(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 68
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 76
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
