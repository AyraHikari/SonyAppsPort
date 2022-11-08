.class public Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShortcutParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/AutoInstallsLayout;
    .param p2, "iconRes"    # Landroid/content/res/Resources;

    .line 422
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    .line 424
    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 428
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 429
    .local v0, "titleResId":I
    const-string v2, "icon"

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 431
    .local v1, "iconId":I
    const/4 v3, -0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v4

    .line 437
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_1

    .line 438
    return v3

    .line 441
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 442
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    .line 444
    return v3

    .line 448
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, v3, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v3

    .line 449
    .local v3, "li":Lcom/android/launcher3/icons/LauncherIcons;
    iget-object v6, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v6, v6, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 450
    invoke-virtual {v3, v5}, Lcom/android/launcher3/icons/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 449
    invoke-static {v7}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 451
    invoke-virtual {v3}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    .line 453
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "iconPackage"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "iconResource"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/high16 v2, 0x10200000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v6, v2, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v4, v7}, Lcom/android/launcher3/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)I

    move-result v2

    return v2

    .line 433
    .end local v3    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_0
    return v3
.end method

.method protected parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 463
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 466
    :cond_1
    :goto_0
    return-object v2
.end method
