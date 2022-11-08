.class Lcom/android/launcher3/popup/PopupPopulator$1;
.super Ljava/lang/Object;
.source "PopupPopulator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/PopupPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2
    .param p1, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 65
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, -0x1

    return v0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 62
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/PopupPopulator$1;->compare(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p1

    return p1
.end method
