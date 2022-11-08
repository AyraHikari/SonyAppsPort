.class public Lcom/android/launcher3/uioverrides/ApiWrapper;
.super Ljava/lang/Object;
.source "ApiWrapper.java"


# static fields
.field public static final TASKBAR_DRAWN_IN_PROCESS:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHotseatEndOffset(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_nav_buttons_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lcom/android/launcher3/R$dimen;->taskbar_contextual_button_margin:I

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/android/launcher3/R$dimen;->taskbar_hotseat_nav_spacing:I

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 49
    return v1

    .line 53
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getPersons(Landroid/content/pm/ShortcutInfo;)[Landroid/app/Person;
    .locals 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 34
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    .line 35
    .local v0, "persons":[Landroid/app/Person;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/launcher3/Utilities;->EMPTY_PERSON_ARRAY:[Landroid/app/Person;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
