.class public Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;
.super Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppShortcutWithUriParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/DefaultLayoutParser;

    .line 102
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method

.method private getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 152
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 153
    .local v0, "systemResolve":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 154
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 156
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 157
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 156
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 158
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 159
    if-eqz v0, :cond_0

    .line 160
    return-object v3

    .line 162
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 168
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    nop

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v4

    .line 166
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DefaultLayoutParser"

    const-string v6, "Unable to get info about resolve results"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    return-object v3

    .line 170
    .end local v2    # "i":I
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    return-object v0
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 177
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 178
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 179
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const/4 v2, 0x0

    return v2

    .line 177
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 106
    const-string v0, "uri"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DefaultLayoutParser"

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "Skipping invalid <favorite> with no component or uri"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v3

    .line 114
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v4, "metaIntent":Landroid/content/Intent;
    nop

    .line 120
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x10000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 122
    .local v5, "resolved":Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v7, v7, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 127
    .local v6, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    invoke-direct {p0, v6}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 130
    .local v7, "systemApp":Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No preference or single system activity found for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v3

    .line 137
    :cond_1
    move-object v5, v7

    .line 139
    .end local v7    # "systemApp":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 140
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v7, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v7, v7, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 141
    .local v7, "intent":Landroid/content/Intent;
    if-nez v7, :cond_3

    .line 142
    return v3

    .line 144
    :cond_3
    const/high16 v3, 0x10200000

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v8, v3, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v7, v1}, Lcom/android/launcher3/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)I

    move-result v1

    return v1

    .line 115
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "metaIntent":Landroid/content/Intent;
    .end local v5    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v6    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add meta-favorite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    return v3
.end method

.method public bridge synthetic parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p1

    return p1
.end method
