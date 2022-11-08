.class Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;
.super Ljava/lang/Object;
.source "AutoInstallGooglePlayConfigParser.java"

# interfaces
.implements Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Landroid/content/res/Resources;)V
    .locals 0
    .param p2, "iconRes"    # Landroid/content/res/Resources;

    .line 473
    iput-object p1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    .line 475
    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 8
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    .line 480
    .local v0, "titleResId":I
    const-string v2, "icon"

    invoke-static {p1, v2, v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    .line 482
    .local v1, "iconId":I
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->parseUrl(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "url":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 494
    return-wide v2

    .line 497
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 498
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    .line 502
    return-wide v2

    .line 505
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "icon-package-name"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "icon-resource-name"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    iget-object v3, v3, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "name"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmParseListener(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v6}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "shortcuts"

    invoke-interface {v2, v7, v3, v6}, Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 512
    const-wide/16 v2, 0x0

    return-wide v2

    .line 486
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_0
    return-wide v2
.end method

.method protected parseUrl(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 516
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    return-object v0

    .line 521
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
