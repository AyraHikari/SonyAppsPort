.class Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;
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
    name = "AppShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;


# direct methods
.method private constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)V

    return-void
.end method


# virtual methods
.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 450
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 6
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "package-name"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmParseListener(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v4}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "activities"

    invoke-interface {v2, v5, v3, v4}, Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 440
    const-wide/16 v2, 0x0

    return-wide v2

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;->invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v2

    return-wide v2
.end method
