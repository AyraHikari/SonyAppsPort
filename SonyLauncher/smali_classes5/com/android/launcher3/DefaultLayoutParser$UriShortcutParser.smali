.class public Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;
.super Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UriShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/DefaultLayoutParser;
    .param p2, "iconRes"    # Landroid/content/res/Resources;

    .line 193
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    .line 195
    return-void
.end method

.method private parseAndAddDeepShortcut(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v0, v0, Lcom/android/launcher3/DefaultLayoutParser;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 214
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 215
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 214
    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 216
    invoke-static {p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 217
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v3, "restored"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/launcher3/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 219
    .end local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to pin the shortcut for shortcut id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and package name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultLayoutParser"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 199
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "shortcutId"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "shortcutId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->parseAndAddDeepShortcut(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 204
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    return v2
.end method

.method protected parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "uri":Ljava/lang/String;
    :try_start_0
    const-string v1, "uri"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 231
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shortcut has malformed uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultLayoutParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x0

    return-object v2
.end method
