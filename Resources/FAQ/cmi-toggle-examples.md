# draft

this is a draft, we have to expand on this

## CMI Toggle Examples

CMI is flexible and dynamic enough that it can do fancy tricks. One of them is a way to allow you to toggle certain things. This page has some examples to demonstrate how you could learn from them and apply it to your edge case situation.

### Toggle example 1

This one is provided by @dkalaxdk#2228

```yaml
    - check:%cmi_user_metaint_rp%==null! asConsole! usermeta [playerName] add rp 1
    - check:%cmi_user_metaint_trp%==null! asConsole! usermeta [playerName] add trp 0
    - check:%cmi_user_meta_rp%==1! asConsole! msg [playerName] 1
    - check:%cmi_user_meta_rp%==0! asConsole! msg [playerName] 0
    - check:%cmi_user_meta_rp%==1! asConsole! usermeta [playerName] add trp 1
    - check:%cmi_user_meta_trp%==1! asConsole! usermeta [playerName] add temprp 0
    - check:%cmi_user_meta_trp%==0! asConsole! usermeta [playerName] add temprp 1
    - asConsole! usermeta [playerName] add trp 0
```

Using the user meta feature from cmi a temp value can be stored, and then checked against. Allowing you within the same command to manage this value, use it to achieve something unique, including a toggle. 

